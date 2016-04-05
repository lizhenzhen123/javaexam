package util;

public class Timer implements Runnable {
    
	private int hour;
	private int minute;
	private int second;
	public Timer(){
		
	}
	public void run() {
		for(int i=1;i<10;i++){
			System.out.println("多线程");
			if(i==5){
				try {
						
					Thread.sleep(10000);
				} catch (InterruptedException e) {
						// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}	
		}
	}	
}
