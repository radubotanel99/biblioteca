import React, {useState} from "react";
import NavBar from "./NavBar";
import TitluPagini from "./TitluPagini";
import Buton from "./Buton";
import AddRent from "./AddRent";
import FinRent from "./FinRent";
import AfisareUseri from "./AfisareUseri";

export default function Imprumuturi () {
    
    const [AddRentIsOpen, setAddRentIsOpen] = useState(false)
    const AddRentClick = () => {
        setAddRentIsOpen(true)
        setDeleteRentIsOpen(false)
        setAllRentIsOpen(false)
    }
    const [DeleteRentIsOpen, setDeleteRentIsOpen] = useState(false)
    const DeleteRentClick = () => {
        setAddRentIsOpen(false)
        setDeleteRentIsOpen(true)
        setAllRentIsOpen(false)
    }
    const [AllRentIsOpen, setAllRentIsOpen] = useState(false)
    const AllRentClick = () => {
        setAddRentIsOpen(false)
        setDeleteRentIsOpen(false)
        setAllRentIsOpen(true)
    }
    
    return (
        <div>
            <NavBar />
            <TitluPagini titlu="Imprumuturi" />
            <div style={{margin: 'auto', width: "50.1%", display: 'flex', flexDirection: 'row'}} >
                <Buton onClick={AddRentClick} name="Adauga Imprumut"/>
                <Buton onClick={DeleteRentClick} name="Returneaza Carte"/>
                <Buton onClick={AllRentClick} name="Fisele Membrilor"/>   
            </div>
            <div style={{margin: 'auto', width: '100%'}}>
                {AddRentIsOpen && <AddRent />}
                {AllRentIsOpen && <AfisareUseri />}
                {DeleteRentIsOpen && <FinRent />}
            </div>
        </div>
    )
}