const blogPosts = [
  {
    title: "Introduction to Blogging",
    content:
      "Blogging is a great way to share your thoughts and ideas with the world. This is an introduction to what blogging is all about!",
  },
  {
    title: "Why Learn JavaScript?",
    content:
      "JavaScript is a versatile language for web development, used both on the front-end and back-end. Here's why you should learn it!",
  },
  {
    title: "CSS Tips for Beginners",
    content:
      "CSS can be tricky for newcomers. Here are some tips to get started and make your website look great!",
  },
  {
    title: "Understanding HTML Structure",
    content:
      "HTML forms the foundation of web pages. Learning the structure of HTML will help you build better websites.",
  },
  {
    title: "Responsive Web Design Basics",
    content:
      "Responsive design is key for modern websites. Learn how to make your site look great on all devices!",
  },
  {
    title: "Getting Started with Git",
    content:
      "Git is an essential tool for version control. Here's how to get started and manage your code effectively.",
  },
  {
    title: "Tips for Learning to Code",
    content:
      "Learning to code can be challenging. These tips will help you stay motivated and keep making progress.",
  },
];

function renderPosts() {
  const blogList = document.getElementById("blog-list");

  blogPosts.forEach((post) => {
    const postElement = document.createElement("div");
    postElement.classList.add("post");

    postElement.innerHTML = `
            <h2>${post.title}</h2>
            <p>${post.content}</p>
        `;

    blogList.appendChild(postElement);
  });
}

document.addEventListener("DOMContentLoaded", renderPosts);

document.getElementById("secret-button").addEventListener("click", () => {
  window.location.href = "secret.html";
});
