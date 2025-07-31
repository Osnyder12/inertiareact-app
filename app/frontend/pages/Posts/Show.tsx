import { usePage } from "@inertiajs/react";
import { useState } from "react";

interface Post {
  id: number;
  title: string;
  content: string;
  advisor: Advisor;
}

interface Advisor {
  id: number;
  name: string;
  title: string;
}

interface PageProps {
  advisors: Post[];
  [key: string]: any;
}

const PostsShow: React.FC = () => {
  const { post } = usePage<PageProps>().props;
  const [content, setContent] = useState<string | null>(null);

  const handleClick = (event: React.MouseEvent<HTMLButtonElement>) => {
    content === null ? setContent(post.content) : setContent(null);
  };

  return (
    <div>
      <h1 onClick={handleClick}>
        {post.title}: {post.advisor.name}
      </h1>
      {content ? <p>{content}</p> : null}
    </div>
  );
};

export default PostsShow;
