import { usePage } from "@inertiajs/react";

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

  return (
    <div>
      <h1>
        {post.title}: {post.advisor.name}
      </h1>
    </div>
  );
};

export default PostsShow;
