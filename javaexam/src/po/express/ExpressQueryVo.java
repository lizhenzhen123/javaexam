package po.express;

import java.util.List;

public class ExpressQueryVo {
	
	private Express express;
	
	private ExpressCustom expressCustom;
	
	private List<Integer> ids;

	public Express getExpress() {
		return express;
	}

	public void setExpress(Express express) {
		this.express = express;
	}

	public ExpressCustom getExpressCustom() {
		return expressCustom;
	}

	public void setExpressCustom(ExpressCustom expressCustom) {
		this.expressCustom = expressCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}	

}
