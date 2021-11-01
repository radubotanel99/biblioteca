import React, { useState } from "react";
import NavBar from "./NavBar";
import TitluPagini from "./TitluPagini";
import Buton from "./Buton";
import AddUser from "./AddUser";
import AfisareUseri from "./AfisareUseri";
import StergeMembru from "./StergeMembru";
import Poza from "./Poza";

export default function Membrii () {

    const [PozaIsOpen, setPozaIsOpen] = useState(true)

    const [AddUserIsOpen, setAddUserIsOpen] = useState(false)
    const AddUserClick = () => {
        setAddUserIsOpen(true)
        setDeleteUserIsOpen(false)
        setAllUserIsOpen(false)
        setPozaIsOpen(false)
    }
    const [DeleteUserIsOpen, setDeleteUserIsOpen] = useState(false)
    const DeleteUserClick = () => {
        setAddUserIsOpen(false)
        setDeleteUserIsOpen(true)
        setAllUserIsOpen(false)
        setPozaIsOpen(false)
    }
    const [AllUserIsOpen, setAllUserIsOpen] = useState(false)
    const AllUserClick = () => {
        setAddUserIsOpen(false)
        setDeleteUserIsOpen(false)
        setAllUserIsOpen(true)
        setPozaIsOpen(false)
    }

    return (
        <div>
            <NavBar />
            <TitluPagini titlu="Membrii" />
            <div className="subMeniu" >
                <Buton onClick={AddUserClick} name="Adauga Membru"/>
                <Buton onClick={DeleteUserClick} name="Sterge Membru"/>
                <Buton onClick={AllUserClick} name="Membrii Bibliotecii"/>
            </div>
            <div style={{margin: 'auto', width: '100%'}}>
                {AddUserIsOpen && <AddUser />}
                {AllUserIsOpen && <AfisareUseri />}
                {DeleteUserIsOpen && <StergeMembru />}
                {PozaIsOpen && <Poza />}
            </div>
        </div>
    )
}