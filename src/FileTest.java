import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.imageio.ImageIO;

import com.zsc.util.ImageTools;

public class FileTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
//		Long start;
//		for (int i = 0; i < 100; i++) {
//			start = System.currentTimeMillis();
//			File imgFile = new File("d:/21357611107179.jpg");
//			Image imgfile = new Image(imgFile);
//			imgfile.resize(350, 230);
//			imgfile.saveAs("d:/_21357611107179.jpg");
//			System.out.println(System.currentTimeMillis() - start);
//			
//			
//			
//			try {
//				start = System.currentTimeMillis();
//				ImageTools.cutImage(350,230, "d:/21357611107179.jpg", "d:/_121357611107179.jpg",1);
//				System.out.println("--"+(System.currentTimeMillis() - start));
//			} catch (Exception e) {
//				e.printStackTrace();
//			}	
//		}
		try {
			ImageTools.changeImage("e:/21359705789757.jpg", "d:/_121357611107179.jpg");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
