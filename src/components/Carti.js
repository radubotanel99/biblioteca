import React, { useState } from "react";
import NavBar from "./NavBar";
import Buton from "./Buton";
import '../Style.css'; 
import AddBook from "./AddBook";
import ToateCartile from "./ToateCartile";
import RentBooks from "./RentBooks";
import StergeCarte from "./StergeCarte";
import { Button } from "antd/lib/radio";
import TitluPagini from "./TitluPagini";

export default function Carti () {

    const [AddBookIsOpen, setAddBookIsOpen] = useState(false)
    const AddBookClick = () => {
        setAddBookIsOpen(true)
        setDeleteBookIsOpen(false)
        setAllBooksIsOpen(false)
        setRentBooksIsOpen(false)
    }
    const [DeleteBookIsOpen, setDeleteBookIsOpen] = useState(false)
    const DeleteBookClick = () => {
        setAddBookIsOpen(false)
        setDeleteBookIsOpen(true)
        setAllBooksIsOpen(false)
        setRentBooksIsOpen(false)
    }
    const [AllBooksIsOpen, setAllBooksIsOpen] = useState(false)
    const AllBooksClick = () => {
        setAddBookIsOpen(false)
        setDeleteBookIsOpen(false)
        setAllBooksIsOpen(true)
        setRentBooksIsOpen(false)
    }
    const [RentBooksIsOpen, setRentBooksIsOpen] = useState(false)
    const RentBooksClick = () => {
        setAddBookIsOpen(false)
        setDeleteBookIsOpen(false)
        setAllBooksIsOpen(false)
        setRentBooksIsOpen(true)
    }

    return (
        <div>
            <NavBar />
            <TitluPagini titlu="Carti" />
            <div style={{margin: 'auto', width: "60%", display: 'flex', flexDirection: 'row'}} >
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
            </div>
            
        </div>
        
    )
}