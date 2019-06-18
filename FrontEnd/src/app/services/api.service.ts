import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor() { }

  baseUrl = "https://localhost:44329/api/";
  apiUrl = {
    admins: this.baseUrl + "admins",
    customers: this.baseUrl + "customers",
    books: this.baseUrl + "books",
    inputs: this.baseUrl + "inputs",
    receipts: this.baseUrl + "receipts",
  }
}
