import { FC } from "react";
import style from "./style.module.css"
import { useDependencies } from './dependencies'

export type Props = {
};

const Text: FC<Props> = (props) => {
  const deps = useDependencies(props)
  return (
    <div className={style.module}>
    </div>
  );
}

export default Text