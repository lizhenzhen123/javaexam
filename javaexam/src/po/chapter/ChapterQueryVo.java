package po.chapter;

import java.util.List;

public class ChapterQueryVo {
	
	private Chapter chapter;
	
	private ChapterCustom chapterCustom;
	
	private List<Integer> ids;

	public Chapter getChapter() {
		return chapter;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	public ChapterCustom getChapterCustom() {
		return chapterCustom;
	}

	public void setChapterCustom(ChapterCustom chapterCustom) {
		this.chapterCustom = chapterCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
