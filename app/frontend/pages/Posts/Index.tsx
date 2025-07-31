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

const PostsIndex: React.FC = () => {
  const { posts } = usePage<PageProps>().props;

  return (
    <div>
      {posts.map((post) => (
        <h1>
          {post.title}: {post.advisor.name}
        </h1>
      ))}
      ;
    </div>
  );
};

export default PostsIndex;
