package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import po.chapter.Chapter;
import po.chapter.ChapterCustom;

import service.ChapterService;

@Controller
@RequestMapping("chapter")
public class ChapterController {
	
	@Autowired
	private ChapterService chapterService;
	//章节管理
	@RequestMapping("chapter")
	public String chapter()throws Exception{
		return "";
	}
	
	//根据id查询单个章节
	@RequestMapping("findChapterById")
	public String findChapterById(Chapter chapter) throws Exception{
		System.out.println("chapter="+chapter);
		System.out.println("chapter.id="+chapter.getId());
		ChapterCustom chapterCustom=chapterService.findChapterCustomById(chapter);
		if(chapterCustom==null)
			return "admin/error";
		return "admin/success";
	}
	//查询所有章节
	@RequestMapping("findAllChapter")
	public String findAllChapter(Model model) throws Exception{
		
		List<Chapter> chapterList=chapterService.findAllChapter();
		if(chapterList==null)
			return "admin/error";
		model.addAttribute("chapterList", chapterList);
		return "admin/success";
	}
	//根据多个id查询章节列表
	@RequestMapping("findChapterByIds")
	public String findChapterByIds(List<Integer> ids) throws Exception{
		chapterService.findChapterByIds(ids);
		return "";
	}
	
	//添加章节
	@RequestMapping("addChapter")
	public String addChapter(Chapter chapter) throws Exception{
		chapterService.addChapter(chapter);
		
		return "admin/success";
	}
	//删除章节
	@RequestMapping("deleteChapter")
	public String deleteChapter(Chapter chapter) throws Exception{
		
		return "";
	}
	//修改章节内容
	@RequestMapping("updateChapter")
	public String updateChapter(Chapter chapter) throws Exception{
		
		return "";
	}
	

}
