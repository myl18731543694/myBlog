/**
 * 
 */
package com.learn.myblog.coreCode.oschinablog.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.MsgUtils;

/**
 * @ClassName: OSChinaBlogController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月19日
 */
@RestController
@RequestMapping("/OSChinaBlog")
public class OSChinaBlogController {

	/**
	 * 获取博客列表
	 * 
	 * @param page
	 * @return
	 */
	@RequestMapping("/getBlogList")
	public Msg getBlogList(@RequestParam int page) {
		try {
			if (page <= 0) {
				page = 1;
			}
			String OSChinaBlogListUrl = "https://my.oschina.net/xxiaobian/widgets/_space_index_newest_blog?catalogId=547834&q=&p="
					+ page + "&type=ajax";
			String resultHtml = this.httpGetUrl(OSChinaBlogListUrl);
			if ("".equals(resultHtml)) {
				return MsgUtils.getFailedMsg();
			}

			ArrayList<HashMap<String, String>> resultBlog = this.blogListByOSChina(resultHtml);
			return MsgUtils.getSuccessMsg(resultBlog);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return MsgUtils.getFailedMsg();
	}

	/**
	 * 获取博客详情
	 * 
	 * @param page
	 * @return
	 */
	@RequestMapping("/getBlogDetails")
	public Msg getBlogDetails(@RequestParam String blogDetails) {
		try {
			String resultHtml = this.httpGetUrl(blogDetails);
			if ("".equals(resultHtml)) {
				return MsgUtils.getFailedMsg();
			}

			String resultBlog = this.blogDetailsByOSChina(resultHtml);
			return MsgUtils.getSuccessMsg(resultBlog);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return MsgUtils.getFailedMsg();
	}

	/**
	 * 发送get请求
	 * 
	 * @param url
	 * @return html
	 */
	protected String httpGetUrl(String url) throws ClientProtocolException, IOException {
		// new http请求对象
		HttpGet httpGet = new HttpGet(url);
		httpGet.setHeader("Accept",
				"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8");
		httpGet.setHeader("Accept-Encoding", "gzip, deflate, br");
		httpGet.setHeader("Accept-Language", "zh-CN,zh;q=0.9");
		httpGet.setHeader("Cache-Control", "max-age=0");
		httpGet.setHeader("Connection", "keep-alive");
		httpGet.setHeader("Host", "my.oschina.net");
		httpGet.setHeader("User-Agent",
				"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36");

		HttpClient httpClient = HttpClients.createDefault();
		HttpResponse httpResponse = httpClient.execute(httpGet);
		if (httpResponse != null) {
			HttpEntity httpEntity = httpResponse.getEntity();
			return EntityUtils.toString(httpEntity);
		}
		return "";
	}

	/**
	 * 查询博客列表 by OSChina
	 * 
	 * @param resultHtml
	 * @return
	 */
	protected ArrayList<HashMap<String, String>> blogListByOSChina(String resultHtml) {
		Document doc = Jsoup.parse(resultHtml);
		Element list_containerelement = doc.selectFirst(".list-container");
		Elements blog_item = list_containerelement.select(".blog-item");

		ArrayList<HashMap<String, String>> resultOSChinaBlogList = new ArrayList<>();
		for (Element item : blog_item) {
			// 首页图片url
			String blogImgUrl = item.selectFirst(".images").selectFirst(".image").child(0).attr("src").toString();

			Element content = item.selectFirst(".content");

			// 博客标题
			String blogTitle = content.selectFirst(".header").ownText();
			// 博客详情url
			String blogDetails = content.selectFirst(".header").attr("href");
			// 博客简介
			String blogIntro = content.selectFirst(".description").text();

			Element extra = content.selectFirst(".extra").child(0).child(0);
			// 博客创建时间
			String blogCreateTime = extra.child(1).ownText();
			// 博客阅读人数
			String blogReadNumber = extra.child(2).ownText();

			HashMap<String, String> itemMap = new HashMap<>();
			itemMap.put("blogImgUrl", blogImgUrl);
			itemMap.put("blogTitle", blogTitle);
			itemMap.put("blogDetails", blogDetails);
			itemMap.put("blogIntro", blogIntro);
			itemMap.put("blogCreateTime", blogCreateTime);
			itemMap.put("blogReadNumber", blogReadNumber);
			resultOSChinaBlogList.add(itemMap);
		}

		return resultOSChinaBlogList;
	}

	/**
	 * 查询博客详情 by OSChina
	 * 
	 * @param resultHtml
	 * @return
	 */
	protected String blogDetailsByOSChina(String resultHtml) {
		Document doc = Jsoup.parse(resultHtml);
		Element articleContent = doc.selectFirst("#articleContent");
		return articleContent.toString();
	}

}
