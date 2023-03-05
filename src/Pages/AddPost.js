import axios from "axios";
import React, {useState} from "react";
import { useNavigate } from "react-router-dom";
import FileBase from "react-file-base64";

const initialState = {
  caption: "",
  description: "",
  noOfOpenings: 0,
  location: "",
  salary: 0,
};

const AddPost = () => {
  const [value, setValue] = useState({
    file: ""
  });
  const [formData, setFormData] = React.useState(initialState);
  const [showModal, setShowModal] = React.useState(false);
  const navigate = useNavigate();
//   const change = (e) =>{
//     setValue({...value, [e.target.name]: e.target.value})
// }

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
        console.log(value.file);
        console.log(formData.caption);
      const res = await axios.post(
        "http://localhost:5000/postpost",
        {
          caption: formData.caption,
        //   value: value.file
        },
        {
          headers: {
            "auth-token": localStorage.getItem("token"),
          },
        }
      );
      alert('Photo posted succesfully')
    } catch (err) {
      console.log(err);
    }
    setFormData(initialState);
    setShowModal(false);
  };

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  return (
    <div>
      <button
        className="bg-black text-white active:bg-bg4 font-[500] text-xl px-5 py-3 rounded-lg shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 text-caption"
        type="button"
        onClick={() => setShowModal(true)}
      >
        Add a Post
      </button>
      {showModal ? (
        <div className="font-main">
          <div className="justify-center items-center flex overflow-x-hidden overflow-y-auto fixed inset-0 z-50 outline-none focus:outline-none">
            <div className="relative w-auto my-6 mx-auto max-w-3xl">
              <div className="border-0 rounded-lg shadow-lg relative flex flex-col bg-white outline-none focus:outline-none p-7 w-[37rem]">
                <div className="flex items-start justify-between p-2 border-b border-solid border-slate-200 rounded-t">
                  <h3 className="text-xl font-semibold font-main">
                    Add a post
                  </h3>
                  <button
                    className="text-neutralPrimary bg-[#6dc9b8] font-bold text-sm m-1 float-right p-1"
                    type="button"
                    onClick={() => setShowModal(false)}
                  >
                    X
                  </button>
                </div>
                <div className="relative p-6 flex-auto">
                  <form className="space-y-6" onSubmit={handleSubmit}>
                    <div>
                      <label
                        htmlFor="caption"
                        className="block mb-2 text-sm font-medium text-neutralSecondary"
                      >
                        Upload your picture:
                      </label>
                      {/* <input type="file" name="file" id="file" /> */}
                      <FileBase
                        type="file"
                        multiple={false}
                        // onDone={({ base64 }) =>
                        //   setValue({ ...value, file: base64 })
                        // }
                      />
                    </div>
                    <div>
                      <label
                        htmlFor="caption"
                        className="block mb-2 text-sm font-medium text-neutralSecondary"
                      >
                        Add caption for your post:
                      </label>
                      <textarea
                        type="text"
                        name="caption"
                        id="caption"
                        className="border-b-2 text-gray-900 text-sm rounded-sm focus:outline-none focus:border-b-buttons block w-full p-2 bg-[#F0F0F0] placeholder-[#F0F0F0] "
                        placeholder="Enter task name"
                        required
                        onChange={handleChange}
                      />
                    </div>
                    <button
                      className="w-24 bg-buttons bg-black/90 text-white active:bg-bg4 font-semibold text-sm px-6 py-2 rounded shadow hover:shadow-lg outline-none focus:outline-none ease-linear transition-all duration-150"
                      type="submit"
                      onClick={handleSubmit}
                    >
                      Add
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div className="opacity-25 fixed inset-0 z-40 bg-black"></div>
        </div>
      ) : null}
    </div>
  );
};

export default AddPost;
