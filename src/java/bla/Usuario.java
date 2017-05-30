package bla;
   
  import java.io.Serializable;
  import java.util.Objects;
   
  public class Usuario
          implements Serializable {
   
      private Integer codigo;
      private String nome;
      private String login;
      private String senha;
      private String email;
      private String adm;
      private String end;
   
      public Usuario() {
          this(null, null, null, null, null, null, null);
      }
   
      public Usuario(Integer codigo, String nome, String login, String senha, String email, String adm, String end) {
          this.codigo = codigo;
          this.nome = nome;
          this.login = login;
          this.senha = senha;
          this.email = email;
          this.adm = adm;
          this.end = end;
      }
   
      public Integer getCodigo() {
          return codigo;
      }
   
      public void setCodigo(Integer codigo) {
          this.codigo = codigo;
      }
   
      public String getNome() {
          return nome;
      }
   
      public void setNome(String nome) {
          this.nome = nome;
      }
   
      public String getLogin() {
          return login;
      }
   
      public void setLogin(String login) {
          this.login = login;
      }
   
      public String getSenha() {
          return senha;
      }
   
      public void setSenha(String senha) {
          this.senha = senha;
      }
      public String getEmail() {
          return email;
      }
   
      public void setEmail(String email) {
          this.email = email;
      }
      
      public String getAdm() {
          return adm;
      }
   
      public void setAdm(String adm) {
          this.adm = adm;
      }
      
      public String getEnd() {
          return end;
      }
   
      public void setEnd(String end) {
          this.end = end;
      }
   
   
      @Override
      public int hashCode() {
          int hash = 7;
          hash = 89 * hash + Objects.hashCode(this.codigo);
          return hash;
      }
   
      @Override
      public boolean equals(Object obj) {
          if (obj == null) {
              return false;
          }
          if (getClass() != obj.getClass()) {
              return false;
          }
          final Usuario other = (Usuario) obj;
          if (!Objects.equals(this.codigo, other.codigo)) {
              return false;
          }
          return true;
      }
  }