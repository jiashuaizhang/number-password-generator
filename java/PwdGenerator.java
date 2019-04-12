//pagkage omitted

import java.util.Random;

/**
 * 无参密码生成器接口
 * @author zhangjiashuai
 */
@FunctionalInterface
public interface PwdGenerator {
	
	String generate();
	
	/**
	 * 六位数字密码生成器 默认实现
	 * @author zhangjiashuai
	 */
	class DefaultPwdGenerator implements PwdGenerator{

		private static final int LENGTH = 6;
		
		@Override
		public String generate() {
			Random random = new Random();
			StringBuilder buider = new StringBuilder();
			for (int i = 0; i < LENGTH; i++) {
				buider.append(random.nextInt(10));
			}
			return buider.toString();
		}
		
	}
	
	//测试方法
	public static void main(String[] args) {
		PwdGenerator generator0 = new DefaultPwdGenerator();
		System.out.println(generator0.generate());
		PwdGenerator generator1 = () -> String.valueOf(Math.random()).substring(2, 8);
		System.out.println(generator1.generate());
	}
}
