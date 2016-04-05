package mapper.chapter;

import java.util.List;

import po.chapter.Chapter;
import po.chapter.ChapterCustom;
import po.chapter.ChapterQueryVo;


public interface ChapterMapperCustom {
	
	/*****************************查询*********************************/	
	//根据id查询章节
	public ChapterCustom findChapterCustomById(Chapter chapter)throws Exception;
	
	//查询所有章节
	public List<Chapter> findAllChapter() throws Exception;
	
	//根据多个ids查询章节
	public List<Chapter> findChapterByIds(List<Integer> ids) throws Exception;
	
	
	//添加章节
	public void addChapter(Chapter chapter)throws Exception;
	
}