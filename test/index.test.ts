import axios from 'axios'

describe('localhost:3000/', () => {
  it('should return a 200 OK response and a string of hello world', async () => {
    const response = await axios.get('http://localhost:3000/');
  
    expect(response.status).toBe(200);
    expect(response.data).toBe('Hello World!');
  });
});