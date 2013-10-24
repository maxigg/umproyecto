package ar.edu.programacion2.domain.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Usuario {

    /**
     */
    @NotNull
    private String Nombre;

    /**
     */
    @NotNull
    private String Apellido;

    /**
     */
    @NotNull
    @Column(unique = true)
    private String Usuario;

    /**
     */
    @NotNull
    @Size(min = 6, max = 10)
    private String Password;
}
