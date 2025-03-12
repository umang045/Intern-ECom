import React from "react";
import { SiNike, SiZara, SiAdidas } from "react-icons/si";
import { cn } from "@/lib/utils";
import { Marquee } from "../magicui/marquee";



const reviews = [
  {
    name: "Jack",
    username: "@jack",
    body: "I've never seen anything like this before. It's amazing. I love it.",
    img: "https://avatar.vercel.sh/jack",
  },
  {
    name: "Jill",
    username: "@jill",
    body: "I don't know what to say. I'm speechless. This is amazing.",
    img: "https://avatar.vercel.sh/jill",
  },
  {
    name: "John",
    username: "@john",
    body: "I'm at a loss for words. This is amazing. I love it.",
    img: "https://avatar.vercel.sh/john",
  },
  {
    name: "Jane",
    username: "@jane",
    body: "I'm at a loss for words. This is amazing. I love it.",
    img: "https://avatar.vercel.sh/jane",
  },
  {
    name: "Jenny",
    username: "@jenny",
    body: "I'm at a loss for words. This is amazing. I love it.",
    img: "https://avatar.vercel.sh/jenny",
  },
  {
    name: "James",
    username: "@james",
    body: "I'm at a loss for words. This is amazing. I love it.",
    img: "https://avatar.vercel.sh/james",
  },
];

const ReviewCard = ({ name, username, body, img }) => (
  <div className="flex items-center space-x-4 p-4 shadow-lg">
    <img src={img} alt={`${name}'s avatar`} className="h-10 w-10 rounded-full" />
    <div>
      <div className="font-bold">{name}</div>
      <div className="text-sm text-gray-500">{username}</div>
      <p className="mt-2">{body}</p>
    </div>
  </div>
);

const Marque = () => {
  return (
    <div className="relative flex w-full flex-col items-center justify-center overflow-hidden">
      <Marquee pauseOnHover className={cn("[--duration:40s]", "flex items-center")}>
        {reviews.map((review, index) => (
          <ReviewCard key={index} {...review} />
        ))}
      </Marquee>
      <Marquee reverse pauseOnHover className={cn("[--duration:40s]", "flex items-center")}>
        {reviews.map((review, index) => (
          <ReviewCard key={index} {...review} />
        ))}
      </Marquee>
      <div className="pointer-events-none absolute inset-y-0 left-0 w-1/4 bg-gradient-to-r from-background"></div>
      <div className="pointer-events-none absolute inset-y-0 right-0 w-1/4 bg-gradient-to-l from-background"></div>
    </div>
  );
};

export default Marque;