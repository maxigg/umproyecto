// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.programacion2.domain.domain;

import ar.edu.programacion2.domain.domain.ApplicationConversionServiceFactoryBean;
import ar.edu.programacion2.domain.domain.Usuario;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Usuario, String> ApplicationConversionServiceFactoryBean.getUsuarioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.programacion2.domain.domain.Usuario, java.lang.String>() {
            public String convert(Usuario usuario) {
                return new StringBuilder().append(usuario.getNombre()).toString();
            }
        };
    }
    
    public Converter<Long, Usuario> ApplicationConversionServiceFactoryBean.getIdToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.programacion2.domain.domain.Usuario>() {
            public ar.edu.programacion2.domain.domain.Usuario convert(java.lang.Long id) {
                return Usuario.findUsuario(id);
            }
        };
    }
    
    public Converter<String, Usuario> ApplicationConversionServiceFactoryBean.getStringToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.programacion2.domain.domain.Usuario>() {
            public ar.edu.programacion2.domain.domain.Usuario convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Usuario.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getUsuarioToStringConverter());
        registry.addConverter(getIdToUsuarioConverter());
        registry.addConverter(getStringToUsuarioConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}