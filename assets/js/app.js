import React from 'react';
import ReactDOM from 'react-dom';

// Add these imports:
import ChatContainer from "./components/chat-container";
import MenuContainer from "./components/menu-container";
import DATA from './fake-data';

class App extends React.Component {
    render() {
        const ROOMS = DATA.rooms;
        const MESSAGES = DATA.rooms[0].messages;

        return (
                <div>
                <MenuContainer 
            rooms={ROOMS} 
                />
                <ChatContainer 
            messages={MESSAGES}
                />
                </div>
        )
    }
}

ReactDOM.render(
        <App />,
    document.getElementById('app'),
);
