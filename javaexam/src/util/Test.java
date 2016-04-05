package util;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Runnable testTime=new Timer();
		Thread thread=new Thread(testTime);
		thread.start();

	}

}
