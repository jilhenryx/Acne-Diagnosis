import styled from 'styled-components'

const getColor = (props) => {
    if (props.isDragAccept) {
        return '#0b5eec';
    }
    if (props.isDragReject) {
        return '#ff1744';
    }
    return '#7F7F7F';
}

export const Container = styled.div`
    display: grid;
    flex:1;
    width:90%;
    place-items: center;
    padding: 20px;
    border-width: 2px;
    border-radius: 2px;
    border-color: ${props => getColor(props)};
    border-style: dashed;
    background-color: #e6e6e6;
    color: #bdbdbd;
    outline: none;
    transition: border .20s ease-in-out;
  `;