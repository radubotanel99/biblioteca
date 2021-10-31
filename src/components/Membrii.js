import React, { useState } from "react";
import NavBar from "./NavBar";
import TitluPagini from "./TitluPagini";
import Buton from "./Buton";
import AddUser from "./AddUser";
import AfisareUseri from "./AfisareUseri";

export default function Membrii () {

    const [AddUserIsOpen, setAddUserIsOpen] = useState(false)
    const AddUserClick = () => {
        setAddUserIsOpen(true)
        setDeleteUserIsOpen(false)
        setAllUserIsOpen(false)
    }
    const [DeleteUserIsOpen, setDeleteUserIsOpen] = useState(false)
    const DeleteUserClick = () => {
        setAddUserIsOpen(false)
        setDeleteUserIsOpen(true)
        setAllUserIsOpen(false)
    }
    const [AllUserIsOpen, setAllUserIsOpen] = useState(false)
    const AllUserClick = () => {
        setAddUserIsOpen(false)
        setDeleteUserIsOpen(false)
        setAllUserIsOpen(true)
    }

    return (
        <div>
            <NavBar />
            <TitluPagini titlu="Membrii" />
            <div style={{margin: 'auto', width: "50%", display: 'flex', flexDirection: 'row'}} >
                <Buton onClick={AddUserClick} name="Adauga Membru"/>
                <Buton onClick={DeleteUserClick} name="Sterge Membru"/>
                <Buton onClick={AllUserClick} name="Membrii Bibliotecii"/>
            </div>
            <div style={{margin: 'auto', width: '100%'}}>
                {AddUserIsOpen && <AddUser />}
                {AllUserIsOpen && <AfisareUseri />}]
            </div>
        </div>
    )
}