import React, { useState } from "react";
import NavBar from "./NavBar";
import Buton from "./Buton";
import AddBook from "./AddBook";
import ToateCartile from "./ToateCartile";
import RentBooks from "./RentBooks";
import StergeCarte from "./StergeCarte";
import TitluPagini from "./TitluPagini";
import Poza from "./Poza";

export default function Carti () {

    const [PozaIsOpen, setPozaIsOpen] = useState(true)

    const [AddBookIsOpen, setAddBookIsOpen] = useState(false)
    const AddBookClick = () => {
        setAddBookIsOpen(true)
        setDeleteBookIsOpen(false)
        setAllBooksIsOpen(false)
        setRentBooksIsOpen(false)
        setPozaIsOpen(false)
    }
    const [DeleteBookIsOpen, setDeleteBookIsOpen] = useState(false)
    const DeleteBookClick = () => {
        setAddBookIsOpen(false)
        setDeleteBookIsOpen(true)
        setAllBooksIsOpen(false)
        setRentBooksIsOpen(false)
        setPozaIsOpen(false)
    }
    const [AllBooksIsOpen, setAllBooksIsOpen] = useState(false)
    const AllBooksClick = () => {
        setAddBookIsOpen(false)
        setDeleteBookIsOpen(false)
        setAllBooksIsOpen(true)
        setRentBooksIsOpen(false)
        setPozaIsOpen(false)
    }
    const [RentBooksIsOpen, setRentBooksIsOpen] = useState(false)
    const RentBooksClick = () => {
        setAddBookIsOpen(false)
        setDeleteBookIsOpen(false)
        setAllBooksIsOpen(false)
        setRentBooksIsOpen(true)
        setPozaIsOpen(false)
    }

    return (
        <div>
            <NavBar />
            <TitluPagini titlu="Carti" />
            <div className="subMeniu" >
                <Buton onClick={AddBookClick} name="Adauga Carte"/>
                <Buton onClick={DeleteBookClick} name="Sterge Carte"/>
                <Buton onClick={AllBooksClick} name="Toate Cartile"/>
                <Buton onClick={RentBooksClick} name="Cartile Imprumutate"/>
            </div>

            <div style={{margin: 'auto', width: '100%'}}>
                {AllBooksIsOpen && <ToateCartile />}
                {RentBooksIsOpen && <RentBooks />}
                {AddBookIsOpen && <AddBook />}
                {DeleteBookIsOpen && <StergeCarte />}
                <div>
                    {PozaIsOpen && <Poza />}
                </div>
            </div>
        </div>
    )
}