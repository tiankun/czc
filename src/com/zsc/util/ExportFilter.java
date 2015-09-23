/*
 * <p> Company: **********公司</p>
 * <p> Copyright: Copyright (c) 2009 *********公司</p>
 * <p> Created on 2010-11-15</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.extremecomponents.table.filter.AbstractExportFilter;
import org.extremecomponents.table.filter.ExportResponseWrapper;
/**
 * 过滤eXtremeComponents导出exl文件名（解决文件名乱码问题）
 */
public class ExportFilter extends AbstractExportFilter {
	private boolean responseHeadersSetBeforeDoFilter;

	public void init(FilterConfig filterConfig) throws ServletException {
		String responseHeadersSetBeforeDoFilter = filterConfig
				.getInitParameter("responseHeadersSetBeforeDoFilter");
		if (StringUtils.isNotBlank(responseHeadersSetBeforeDoFilter)) {
			this.responseHeadersSetBeforeDoFilter = new Boolean(
					responseHeadersSetBeforeDoFilter).booleanValue();
		}
	}

	public void destroy() {
	}

	protected void doFilterInternal(ServletRequest request,
			ServletResponse response, FilterChain chain, String exportFileName)
			throws IOException, ServletException {
		// 导出时中文文件名为乱码的问题解决
		String encoding = request.getCharacterEncoding();
		if(encoding==null)
			encoding="GBK";
		if (encoding.equalsIgnoreCase("GBK")) {
			exportFileName = new String(exportFileName.getBytes("GBK"),
					"ISO8859-1");
		} else if (encoding.equalsIgnoreCase("GB2312")) {
			exportFileName = new String(exportFileName.getBytes("GB2312"),"ISO8859-1");
		}// 如果是“utf-8”什么也不用干
		if (responseHeadersSetBeforeDoFilter) {
			setResponseHeaders((HttpServletResponse) response, exportFileName);
		}
		chain.doFilter(request, new ExportResponseWrapper(
				(HttpServletResponse) response));
		if (!responseHeadersSetBeforeDoFilter) {
			setResponseHeaders((HttpServletResponse) response, exportFileName);
		}

	}
}
