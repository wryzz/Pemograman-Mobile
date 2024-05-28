package main

import (
	"encoding/json"
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
)

type Products struct {
	ID            string `json:"id"`
	ProductName   string `json:"product_name"`
	ProductDetail string `json:"product_detail"`
	Date          string `json:"date"`
}

var products []Products

func allProduct() {
	product := Products{
		ID:            "1",
		ProductName:   "New Projects",
		ProductDetail: "Projects UTS",
		Date:          "2021-04-01",
	}

	products = append(products, product)

	product1 := Products{
		ID:            "2",
		ProductName:   "Second Projects",
		ProductDetail: "Projects UTS 2",
		Date:          "2021-04-02",
	}

	products = append(products, product1)

	fmt.Println("Product", products)
}

func homePage(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Saya di rumah")
}

func getProducts(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(products)
}

func getProduct(w http.ResponseWriter, r *http.Request) {
	productId := mux.Vars(r)
	flag := false
	for i := 0; i < len(products); i++ {
		if productId["id"] == products[i].ID {
			json.NewEncoder(w).Encode(products[i])
			flag = true
			break
		}
	}
	if !flag {
		json.NewEncoder(w).Encode(map[string]string{"status": "Error"})
	}
}

func createProduct(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	var product Products
	_ = json.NewDecoder(r.Body).Decode(&product)
	product.ID = strconv.Itoa(rand.Intn(1000))
	products = append(products, product)
	json.NewEncoder(w).Encode(product)
}

func deleteProduct(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Saya di rumah")
}

func updateProduct(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Saya di rumah")
}

func handleRoute() {
	router := mux.NewRouter()
	router.HandleFunc("/", homePage).Methods("GET")
	router.HandleFunc("/getproducts", getProducts).Methods("GET") // Mengubah "/getproduct" menjadi "/getproducts"
	router.HandleFunc("/getproduct/{id}", getProduct).Methods("GET")
	router.HandleFunc("/create", createProduct).Methods("POST")
	router.HandleFunc("/delete/{id}", deleteProduct).Methods("DELETE")
	router.HandleFunc("/update/{id}", updateProduct).Methods("PUT")
	log.Fatal(http.ListenAndServe(":8008", router))
}

func main() {
	allProduct()
	fmt.Println("Hello Flutter boys")
	handleRoute()
}
