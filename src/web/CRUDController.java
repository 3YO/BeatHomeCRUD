package web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("current")
public class CRUDController {

	@Autowired
	private TrackDAO trackdao;
	
	@ModelAttribute("current")
	public Integer initSessionObject() {
		return 1;
	}

	@RequestMapping("listTracks.do")
	public ModelAndView getAllTracks(@RequestParam("name") String a) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("listTracks.jsp");
		mv.addObject("categoryName", a);
		mv.addObject("tracks", trackdao.getAllTracks());
		return mv;

	}

	@RequestMapping("trackByGenre.do")
	public ModelAndView getTrackbyGenre(@RequestParam("name") String a) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("listTracks.jsp");
		mv.addObject("categoryName", a);
		mv.addObject("tracks", trackdao.getTrackbyGenre(a));
		return mv;
	}

	@RequestMapping("getAllInfo.do")
	public ModelAndView getAllInfo(@RequestParam("name") String a) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject("track", trackdao.getAllInfo(a));
		
		return mv;
	}
	
	@RequestMapping(path="newTrack.do",
			method=RequestMethod.POST)
	public ModelAndView newTrack(Track track) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("listTracks.jsp");
		mv.addObject("tracks", trackdao.addTrack(track));
		return mv;
	}
	
	@RequestMapping(path="deleteTrack.do",
			method=RequestMethod.POST)
	public ModelAndView deleteTrack(@RequestParam("name") String track) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("editListTracks.jsp");
		mv.addObject("tracks", trackdao.deleteTrack(track));
		return mv;
	}
	
	@RequestMapping(path="updateTrack.do",
			method=RequestMethod.POST)
	public ModelAndView updateTrack(Track track) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("editListTracks.jsp");
		mv.addObject("tracks", trackdao.updateTrack(track));
		return mv;
	}
	
	
	
	@RequestMapping("editList.do")
	public ModelAndView editTrackList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("editListTracks.jsp");
		mv.addObject("tracks", trackdao.getAllTracks());
		return mv;
	}
	@RequestMapping("edit.do")
	public ModelAndView editTrack(@RequestParam("name") String a) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("editForm.jsp");
		mv.addObject("track", trackdao.getAllInfo(a));
		return mv;
	}

}
