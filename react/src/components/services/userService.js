import axios from "axios";

const endpoint = "https://localhost:50001/api/user";

// getAll Request to API server
const getAllUser = (pageIndex, pageSize) => {
  const config = {
    method: "GET",
    url: `${endpoint}/paginate?pageIndex=${pageIndex}&pageSize=${pageSize}`,
    crossdomain: true,
    withCredentials: true,
    header: { "Content-type": "application/json" },
  };
  return axios(config).then((response) => {
    return response.data.item;
  });
};

// Add Request to API server
const addUser = (payload) => {
  const config = {
    method: 'POST',
    url: `${endpoint}`,
    data: payload,
    crossdomain: true,
    withCredentials: true,
    header: { 'Content-Type': 'application/json' },
  };
  return axios(config).then((response) => {
    return { response, ...payload };
  });
};

// Update Request to API server
const updateUser = (payload) => {
  const config = {
    method: 'PUT',
    url: `${endpoint}/${payload.id}`,
    data: payload,
    withCredentials: true,
    crossdomain: true,
    headers: { 'Content-Type': 'application/json' },
  };

  return axios(config);
};

// delete Request to API server
const deleteUser = (id) => {
  const config = {
    method: 'DELETE',
    url: `${endpoint}/` + id,
    data: id,
    withCredentials: true,
    corssdomain: true,
    headers: { 'Content-Type': 'application/json' },
  };
  return axios(config);
};

export { getAllUser, addUser, updateUser, deleteUser };
