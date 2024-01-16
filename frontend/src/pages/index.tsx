import React from 'react';
import UserInterface from "../components/UserInterface";

const Home: React.FC = () => {
    return (
        <main className="flex flex-wrap justify-center min-h-screen bg-gray-100">
            <div className="m-4">
                <UserInterface backendName="go"/>
            </div>
        </main>
    );
}

export default Home;