package ar.edu.programacion2.domain.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/usuarios")
@Controller
@RooWebScaffold(path = "usuarios", formBackingObject = Usuario.class)
public class UsuarioController {
}
