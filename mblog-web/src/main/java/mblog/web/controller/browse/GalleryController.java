/**
 * 
 */
package mblog.web.controller.browse;

import mblog.core.planet.PostPlanet;
import mblog.web.controller.BaseController;
import mtons.modules.pojos.Page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author langhsu
 *
 */
@Controller
@RequestMapping("/browse")
public class GalleryController extends BaseController {
	@Autowired
	private PostPlanet postPlanet;
	
	private int jsonMaxResults = 8;
	
	@RequestMapping("/gallery")
	public String view(Integer pn, ModelMap model) {
		Page page = wrapPage(pn);
		page.setMaxResults(jsonMaxResults);
		page = postPlanet.paging(page);
		model.put("page", page);
		return "/browse/gallery";
	}
	
	@RequestMapping("/gallery_snippet/{pn}")
	public String snippet(@PathVariable Integer pn, ModelMap model) {
		Page page = wrapPage(pn);
		page.setMaxResults(jsonMaxResults);
		page = postPlanet.paging(page);
		model.put("page", page);
		return "/browse/snippet";
	}
}
