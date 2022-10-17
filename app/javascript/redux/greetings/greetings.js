const GET_GREETINGS = 'redux/greetings/greetings.js/GET_GREETINGS';

export default function greetingsReducer(state = [], action = {}) {
  switch (action.type) {
    case GET_GREETINGS:
      return action.payload;
    default:
      return state;
  }
}

function getGreeting() {
  return async (dispatch) => {
    const response = await fetch('/greeting');
    const greetings = await response.json();
    
    dispatch({
      type: GET_GREETINGS,
      payload: greetings,
    });
  };
}

export { getGreeting };
