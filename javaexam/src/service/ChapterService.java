package service;

import java.util.List;

import mapper.chapter.ChapterMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import po.chapter.Chapter;
import po.chapter.ChapterCustom;
import po.chapter.ChapterQueryVo;

@Service
public class ChapterService {
	
	@Autowired
	private ChapterMapperCustom chapterMapperCustom;
	/**********************查询***************************/
	
	//根据id查询章节
	public ChapterCustom findChapterCustomById(Chapter chapter) throws Exception{
		
		return chapterMapperCustom.findChapterCustomById(chapter);
	}
	//查询所有章节
	public List<Chapter> findAllChapter() throws Exception{
		return chapterMapperCustom.findAllChapter();
	}
	
	//根据多个id查询章节
	public List<Chapter> findChapterByIds(List<Integer> ids) throws Exception{
		return chapterMapperCustom.findChapterByIds(ids);
	}
	/*********************添加********************************/
	//添加章节
	public void addChapter(Chapter chapter) throws Exception{
		
		chapterMapperCustom.addChapter(chapter);
	}
	

}
