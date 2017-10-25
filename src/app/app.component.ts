import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  // properties
  liczba_a = 12;
  liczba_b = 4;
  liczba_c = this.liczba_a + this.liczba_b;

  obliczamy() {
    this.liczba_c = this.liczba_a + this.liczba_b
  }


}
