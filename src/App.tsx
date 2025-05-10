import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

// Import Shadcn UI components
import { Button } from "@/components/ui/button"
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card"

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <a href="https://vite.dev" target="_blank">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React + Shadcn UI</h1>
      
      {/* Shadcn UI Card Component */}
      <Card className="w-[350px] mx-auto mb-4">
        <CardHeader>
          <CardTitle>Shadcn UI Card</CardTitle>
          <CardDescription>Tailwind CSS + Shadcn UI Example</CardDescription>
        </CardHeader>
        <CardContent>
          <p>Click the button below to increase the counter:</p>
          <div className="flex items-center justify-center mt-4">
            <Button 
              variant="outline" 
              onClick={() => setCount((count) => count - 1)}
              className="mr-2"
            >
              -
            </Button>
            <span className="mx-4 text-xl font-bold">{count}</span>
            <Button 
              onClick={() => setCount((count) => count + 1)}
              className="ml-2"
            >
              +
            </Button>
          </div>
        </CardContent>
        <CardFooter className="flex justify-center">
          <p className="text-sm text-gray-500">
            Edit <code>src/App.tsx</code> and save to test HMR
          </p>
        </CardFooter>
      </Card>
      
      <p className="read-the-docs">
        Click on the Vite and React logos to learn more
      </p>
    </>
  )
}

export default App
