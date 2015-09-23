package com.zsc.util;

import org.im4java.core.ConvertCmd;
import org.im4java.core.IMOperation;

public class ImageTools {
	/** * ImageMagick的路径 */
	public static String imageMagickPath = null;
	static {
		 imageMagickPath ="D:/GraphicsMagick-1.3.17-Q16";
	}
	/**
	 * * 根据坐标裁剪图片
	 * @param srcPath要裁剪图片的路径
	 * @param newPath裁剪图片后的路径
	 * @param x起始横坐标
	 * @param y起始挫坐标
	 * @param x1结束横坐标
	 * @param y1结束挫坐标
	 */
	public static void cutImage(String srcPath, String newPath, int x, int y,
			int x1, int y1)
	throws Exception {
		int width = x1 - x;
		int height = y1 - y;
		IMOperation op = new IMOperation();
		op.addImage(srcPath);
		/**
		 * width：裁剪的宽度
		 * height：裁剪的高度
		 * x：裁剪的横坐标
		 * y：裁剪的挫坐标
		 */
		op.crop(width, height, x, y);
		op.addImage(newPath);
		ConvertCmd convert = new ConvertCmd();
		String osName = System.getProperty("os.name").toLowerCase();
		if (osName.indexOf("win") != -1) {
			// linux下不要设置此值，不然会报错
			convert.setSearchPath(imageMagickPath);
		}
		convert.run(op);

	}

	/**
	 * 根据尺寸缩放图片
	 * @param width 缩放后的图片宽度
	 * @param height 缩放后的图片高度
	 * @param srcPath 源图片路径 
	 * @param newPath 缩放后图片的路径 
	 * @param type 1为比例处理，2为大小处理，如（比例：1024x1024,大小：50%x50%）
	 */

	public static void cutImage(int width, int height, String srcPath,
			String newPath, int type) throws Exception {
		IMOperation op = new IMOperation();
		ConvertCmd cmd = new ConvertCmd(true);
		op.addImage();
		String raw = "";
		if (type == 1) {
			// 按像素
			raw+= width + "x" + height + "!";
		} else {
			// 按像素百分比
			raw+= width + "%x" + height + "%";
		}
		op.addRawArgs("-sample", raw);
		op.addRawArgs("+profile", "\"*\"");
		op.addImage();
		String osName = System.getProperty("os.name").toLowerCase();
		if (osName.indexOf("win") != -1) {
			// linux下不要设置此值，不然会报错
			cmd.setSearchPath(imageMagickPath);
		}
		try {
			cmd.run(op, srcPath, newPath);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			cmd=null;
			op=null;
		}
	}

	/**
	 * 图片转换格式
	 * @param srcPath 源图片路径 
	 * @param newPath 缩放后图片的路径 
	 */

	public static void changeImage(String srcPath,String newPath) throws Exception {
		IMOperation op = new IMOperation();
		ConvertCmd cmd = new ConvertCmd(true);
		op.addImage();
		op.addRawArgs("+profile", "\"*\"");
		op.addImage();
		String osName = System.getProperty("os.name").toLowerCase();
		if (osName.indexOf("win") != -1) {
			// linux下不要设置此值，不然会报错
			cmd.setSearchPath(imageMagickPath);
		}
		try {
			cmd.run(op, srcPath, newPath);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			cmd=null;
			op=null;
		}
	}	
	
	
	/**
	 * 给图片加水印
	 * @param srcPath源图片路径
	 */
	public static void addImgText(String srcPath) throws Exception {
		IMOperation op = new IMOperation();
		op.font("宋体").gravity("southeast").pointsize(18).fill("#BCBFC8").draw(
				"text 100,100 co188.com");
		op.addImage();
		op.addImage();
		String osName = System.getProperty("os.name").toLowerCase();
		ConvertCmd cmd = new ConvertCmd(true);
		if (osName.indexOf("win") != -1) {
			// linux下不要设置此值，不然会报错
			cmd.setSearchPath(imageMagickPath);
		}
		try {
			cmd.run(op, srcPath, srcPath);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static void main(String[] args) throws Exception {
		// cutImage("D:\\apple870.jpg", "D:\\apple870eee.jpg",98, 48, 370, 320);
		Long start = System.currentTimeMillis();
		// cutImage(100,100,
		// "e:\\37AF7D10F2D8448A9A5.jpg","e:\\37AF7D10F2D8448A9A5_bak2.jpg",2,"100");
		addImgText("e:\\37AF7D10F2D8448A9A5_bak2.jpg");
		Long end = System.currentTimeMillis();
		System.out.println("time:" + (end - start) / 3600);
	}
}
