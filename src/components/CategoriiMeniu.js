import React, {useState} from "react";
import NavBar from "./NavBar";
import TitluPagini from "./TitluPagini";
import Buton from "./Buton";
import AdaugaCategorie from "./AdaugaCategorie";
import Categorii from "./Categorii";
import StergeCategorie from "./StergeCategorie";
import Poza from "./Poza";

export default function CategoriiMeniu () {

    const [PozaIsOpen, setPozaIsOpen] = useState(true)

    const [AddCategoryIsOpen, setAddCategoryIsOpen] = useState(false)
    const AddCategoryClick = () => {
        setAddCategoryIsOpen(true)
        setDeleteCategoryIsOpen(false)
        setAllCategoryIsOpen(false)
        setPozaIsOpen(false)
    }
    const [DeleteCategoryIsOpen, setDeleteCategoryIsOpen] = useState(false)
    const DeleteCategoryClick = () => {
        setAddCategoryIsOpen(false)
        setDeleteCategoryIsOpen(true)
        setAllCategoryIsOpen(false)
        setPozaIsOpen(false)
    }
    const [AllCategoryIsOpen, setAllCategoryIsOpen] = useState(false)
    const AllCategoryClick = () => {
        setAddCategoryIsOpen(false)
        setDeleteCategoryIsOpen(false)
        setAllCategoryIsOpen(true)
        setPozaIsOpen(false)
    }

    return (
        <div>
            <NavBar />
            <TitluPagini titlu="Categorii" />
            <div style={{width: '100%', textAlign: 'center'}}>
                <div className="subMeniu">    
                    <Buton onClick={AddCategoryClick} name="Adauga Categorie"/>
                    <Buton onClick={DeleteCategoryClick} name="Sterge Categorie"/>
                    <Buton onClick={AllCategoryClick} name="Toate Categoriile"/>
                </div>
            </div>
            
            <div style={{margin: 'auto', width: '100%'}}>
                {AddCategoryIsOpen && <AdaugaCategorie />}
                {AllCategoryIsOpen && <Categorii />}
                {DeleteCategoryIsOpen && <StergeCategorie />}
                {PozaIsOpen && <Poza />}
            </div>
        </div>
    )
}