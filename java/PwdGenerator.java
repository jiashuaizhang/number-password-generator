
import java.util.Random;

/**
 * 六位随机数字密码生成器
 * @author zhangjiashuai
 */
public class PwdGenerator {
	
	private static final int LENGTH = 6;
	
	public String generate() {
		Random random = new Random();
		StringBuilder buider = new StringBuilder();
		for (int i = 0; i < LENGTH; i++) {
			buider.append(random.nextInt(10));
		}
		return buider.toString();
	}
	
	/**
	 * 测试方法
	 * @param args
	 */
	public static void main(String[] args) {
		PwdGenerator generator = new PwdGenerator();
		System.out.println(generator.generate());
	}
}
