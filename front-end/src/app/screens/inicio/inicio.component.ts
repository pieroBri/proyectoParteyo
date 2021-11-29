import { Component, OnInit } from '@angular/core';
import {IntegranteTeam} from '../../interfaces/integrante-team';
import {Artistas, listaArtistas} from '../../interfaces/artistas';
import {Obras} from '../../interfaces/obras';
import {AdminService} from '../../servicios/admin.service';
import {adminPrueba} from '../../interfaces/admin';
import {ArtistasService} from '../../servicios/artistas.service';
import {ImagenesService} from '../../servicios/imagenes.service';
import { IntegrantesService } from '../../servicios/integrantes.service';
import {NoticiasService} from '../../servicios/noticias.service';
import { Observable } from 'rxjs';
import { Router } from '@angular/router';
import { NgbCarouselConfig } from '@ng-bootstrap/ng-bootstrap';
import {ViewEncapsulation} from '@angular/core'


@Component({
  encapsulation: ViewEncapsulation.None,
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.scss']
})
export class InicioComponent implements OnInit {

  artistasRandom:Array<any> = [];

  artistas:Array<any> = listaArtistas;
  imageInfos:Array<any> = [];
  filterArtista ='';
  obras:Array<any> = [];
  imagenesIntegrantes:Array<any> = [];
  listaDeNoticias:any = [];
  imagenesNoticias:Array<any> = [];
  arregloDeTeam:any = [];
  flag:boolean = false;
  adminDePrueba:any = adminPrueba;

  constructor(private servicioAdmin:AdminService, private servicioArtista:ArtistasService, private servicioImagenes:ImagenesService, private router:Router, private servicioIntegrante:IntegrantesService, private servicioNoticia:NoticiasService, private _config:NgbCarouselConfig, ) {
    

    
  }

  ngOnInit(): void {
    
    listaArtistas.length = 0; //de esta manera evitamos que lista artistas guarde los mismos artistas cada ves que se recargue la pagina
    this.artistas = listaArtistas;
    this.arregloDeTeam.length = 0;
    this.listaDeNoticias.length = 0;
    this.imageInfos = [];
    this.filterArtista = '';
    this.obras = [];
    this.obtenerImagenesNoticias();
    this.adminDePrueba = this.servicioAdmin.consultarAdmin();
    
    
    this.flag = true;
  }

  obtenerAdmin(){
    this.servicioAdmin.consultarAdmin().subscribe(Observador=>{
      for (let i = 0; i < Observador.length; i++) 
      {
        adminPrueba.id = Observador[i].id_Admin;
        adminPrueba.correo = Observador[i].correo;
        adminPrueba.contrasena = Observador[i].contraseña;
      }
    });
  }

  obtenerImagenesPerfilFolder(){
    this.servicioImagenes.getImagenPerfilFolder().subscribe(Observador=>{
      for (let i = 0; i <  Observador.length; i++) {
       
        this.imageInfos.push(Observador[i]); 
        
      }
      this.obtenerImagenesIntegrantes();
    })
  }

  obtenerObrasDeArtista(id: number){
    this.servicioImagenes.consultarObrasTabla(id).subscribe(Observador=>{
      for (let i = 0; i <  Observador.length; i++) {
        this.obras.push(Observador[i]);
      }
    })
  }

  obtenerArtistas(){
    this.servicioArtista.consultarArtista().subscribe(Observador=>{
      let fotoBase:any;
      let flag:boolean = true;
      
      for (let i = 0; i < Observador.length; i++) 
      {
        flag = true;
        for (let j = 0; j < this.imageInfos.length && flag; j++) {
          
          if(this.imageInfos[j].name == Observador[i].fotoDePerfilULR){
              
              fotoBase = this.imageInfos[j].url;
              flag = false;
              
          }
        }

        /*for (let k = 0; k < this.obras.length; k++) {

            if(this.obras[k].id_DelArtista == Observador[i].id)
            {
                obrasBase.push({id:this.obras[k].id, nombre:this.obras[k].nombre, descripcion:this.obras[k].descripcion, ulr:this.obras[k].url})
            }
        }*/
        this.obtenerObrasDeArtista(Observador[i].id_Artistas);

        listaArtistas.push({id:Observador[i].id_Artistas, nombreReal:Observador[i].nombreReal, nombreArtista:Observador[i].nombreArtista, correo:Observador[i].correo, contrasena:Observador[i].contrasena, 
          nacionalidad:Observador[i].nacionalidad, descripcion:Observador[i].descripcion, obrasArtista:this.obras ,fotoDePerfilULR:fotoBase ,tipoDeDisplay:Observador[i].tipoDeDisplaytipoDeDisplay});
        //las obras se asignan tal cual debido a que tiene una tabla aparte y un id de ususario que las identifica, en cambio la imagen de usuario no tiene esa capacidad, por lo tanto se obtienen todas y se busca la que concuerde
        
        
      }
      
      this.artistas = [...listaArtistas];
      this.randomId();
      this.obtenerNoticias();
    });
    
    console.log("asdjahskdj",this.artistas);
    
  }

  obtenerImagenesIntegrantes(){
    this.servicioIntegrante.getIntegranteEnFolder().subscribe(Observador =>{

      for(let i = 0; i < Observador.length; i++)
      {
        this.imagenesIntegrantes.push(Observador[i]);
      }
      this.obtenerIntegrantes();
        
    });
  }

  obtenerIntegrantes(){
    this.servicioIntegrante.consultarIntegrantes().subscribe(Observador =>{

      
      for (let i = 0; i < Observador.length; i++) {
        
        
        for(let j = 0; j < this.imagenesIntegrantes.length; j++)
        {
          
          if (this.imagenesIntegrantes[j].name == Observador[i].imagen) {
             this.arregloDeTeam.push({id:Observador[i].id, nombre:Observador[i].nombre, cargo:Observador[i].cargo, descripcion:Observador[i].descripcion, imagen:this.imagenesIntegrantes[j].url});
             console.log(this.arregloDeTeam);
          }
         
        }
        
      }
      this.obtenerArtistas();
    });
  }

  obtenerImagenesNoticias(){
    this.servicioNoticia.getNoticiasFolder().subscribe(Observador =>{
      for(let i = 0; i < Observador.length; i++)
      {
        this.imagenesNoticias.push(Observador[i]);
      }
      this.obtenerImagenesPerfilFolder();
    });
  }

  obtenerNoticias(){
 
    this.servicioNoticia.consultarNoticias().subscribe(Observador =>{
        for (let i = 0; i < Observador.length; i++) {
          
          
          for(let j = 0; j < this.imagenesNoticias.length; j++)
          {
            
            
            if (this.imagenesNoticias[j].name == Observador[i].imagenURL) {
              this.listaDeNoticias.push({titulo:Observador[i].titulo, texto:Observador[i].texto, id:Observador[i].id, imagenURL:this.imagenesNoticias[j].url});
              
            }
          
          }
        }
        console.log(this.listaDeNoticias);
    });
  }

  checkId(){

    if(this.artistas.length > 4){

      this.randomId();
      return true;
    }else return false;
  }
  
  randomId(){ //Funcion funcional
    
    let min = 0;
    let max = this.artistas.length-1;
    let flagIds:boolean;

    if(this.artistas.length > 4){
      for(let i=0; i<4; i++){
        let random = Math.round(Math.random()*(max-min)+min);
        if(i == 0){
          this.artistasRandom[i] = this.artistas[random];
        }else{
          flagIds = true;
          while(flagIds){
            flagIds = false;
            for(let j = 0; j < this.artistasRandom.length; j++){
              if(this.artistasRandom[j] == this.artistas[random]){
                flagIds = true;
              }
            }
            if(!flagIds){
              this.artistasRandom[i] = this.artistas[random];
            }else{
              random = Math.round(Math.random()*(max-min)+min);
            }
          }
        }
      }
    }    
    
  }

  irARuta(idArtistaBuscado:any){
    this.router.navigate(['/perfilPublico',idArtistaBuscado]);
  }

  llevarAVista(idNoticiaBuscada:any){
    this.router.navigate(['/noticiaView',idNoticiaBuscada]);
  }

}