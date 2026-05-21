
jake pall <jakepall008@gmail.com>
2:49 PM (0 minutes ago)
to me

import { useState } from "react"; import { motion } from "framer-motion"; import { Card, CardContent } from "@/components/ui/card"; import { Button } from "@/components/ui/button"; import { Input } from "@/components/ui/input";

const services = [ { title: "Aerobics", desc: "High-energy group workouts to boost stamina." }, { title: "Cycling", desc: "Burn calories with guided cycling sessions." }, { title: "Nutrition Consulting", desc: "Personalized diet plans for transformation." }, { title: "Personal Training", desc: "1-on-1 elite coaching for fast results." }, { title: "Private Lessons", desc: "Focused training tailored to your goals." }, { title: "Youth Classes", desc: "Build strength and discipline early." }, { title: "Weight Training", desc: "Build muscle with progressive overload." }, { title: "Cardio", desc: "Improve endurance and heart health." }, { title: "Powerlifting", desc: "Train for maximum strength gains." }, { title: "CrossFit", desc: "Explosive functional fitness training." }, ];

const plans = [ { name: "Starter Plan", features: ["Gym Access", "Basic Equipment"], price: "NPR 2000" }, { name: "Pro Plan", features: ["Gym + Cardio", "Trainer Guidance"], price: "NPR 4000" }, { name: "Elite Athlete Plan", features: ["All Access", "1-on-1 Coach", "Nutrition Plan"], price: "NPR 7000" }, ];

export default function LionsGym() { const [bmi, setBmi] = useState({ h: "", w: "", res: null }); const whatsapp = "https://wa.me/9779860802648?text=Hi%20Lions%20Gym%2C%20I%20want%20to%20join%20the%20gym";

const calcBMI = () => { const h = bmi.h / 100; const res = (bmi.w / (h * h)).toFixed(2); setBmi({ ...bmi, res }); };

return ( <div className="bg-black text-white min-h-screen scroll-smooth">

{/* Navbar */}
  <div className="fixed top-0 w-full z-50 backdrop-blur bg-black/60 flex justify-between px-6 py-4">
    <h1 className="text-xl font-bold tracking-widest text-red-500">LIONS GYM</h1>
    <a href={whatsapp} className="bg-red-600 px-4 py-2 rounded-xl hover:scale-105 transition">Join Now</a>
  </div>

  {/* Hero */}
  <section className="h-screen flex items-center justify-center text-center bg-[url('https://images.unsplash.com/photo-1534438327276-14e5300c3a48')] bg-cover bg-center">
    <div className="bg-black/70 p-10 rounded-2xl">
      <h1 className="text-5xl font-bold text-red-500">LIONS GYM</h1>
      <p className="mt-4 text-lg">Forge Strength. Build Discipline. Become a Lion.</p>
      <a href={whatsapp} className="mt-6 inline-block bg-red-600 px-6 py-3 rounded-xl">Join Today</a>
    </div>
  </section>

  {/* Services */}
  <section className="p-10 grid md:grid-cols-3 gap-6">
    {services.map((s, i) => (
      <motion.div whileHover={{ scale: 1.05 }} key={i}>
        <Card className="bg-white/10 backdrop-blur border border-white/10 rounded-2xl">
          <CardContent className="p-6">
            <h3 className="text-xl font-bold text-red-400">{s.title}</h3>
            <p className="text-sm mt-2 text-gray-300">{s.desc}</p>
          </CardContent>
        </Card>
      </motion.div>
    ))}
  </section>

  {/* Pricing */}
  <section className="p-10 grid md:grid-cols-3 gap-6">
    {plans.map((p, i) => (
      <Card key={i} className="bg-white/10 backdrop-blur border border-red-500/20 rounded-2xl">
        <CardContent className="p-6">
          <h2 className="text-2xl text-red-400 font-bold">{p.name}</h2>
          <p className="text-xl mt-2">{p.price}</p>
          <ul className="mt-3 text-sm text-gray-300">
            {p.features.map((f, j) => <li key={j}>• {f}</li>)}
          </ul>
          <a href={whatsapp} className="mt-4 block bg-red-600 text-center py-2 rounded-xl">Join on WhatsApp</a>
        </CardContent>
      </Card>
    ))}
  </section>

  {/* BMI */}
  <section className="p-10 text-center">
    <h2 className="text-3xl font-bold text-red-500">BMI Calculator</h2>
    <div className="flex gap-4 justify-center mt-4">
      <Input placeholder="Height cm" onChange={(e)=>setBmi({...bmi,h:e.target.value})} />
      <Input placeholder="Weight kg" onChange={(e)=>setBmi({...bmi,w:e.target.value})} />
      <Button onClick={calcBMI}>Calculate</Button>
    </div>
    {bmi.res && <p className="mt-4 text-xl">Your BMI: {bmi.res}</p>}
  </section>

  {/* Testimonials */}
  <section className="p-10 space-y-6">
    <h2 className="text-3xl text-center text-red-500">Testimonials</h2>
    <Card className="bg-white/10 p-6">
      <p>“This gym is 10/10. Huge parking, friendly trainers...” - Poonam Chaudhary</p>
    </Card>
    <Card className="bg-white/10 p-6">
      <p>“Best gym with top equipment and motivating atmosphere.” - Aman Shakya</p>
    </Card>
    <Card className="bg-white/10 p-6">
      <p>“Spacious gym, great trainers, highly recommended.” - Kaushal Adhikari</p>
    </Card>
  </section>

  {/* Location */}
  <section className="p-10 text-center">
    <h2 className="text-3xl text-red-500">Find Us</h2>
    <iframe
      className="w-full h-80 mt-4 rounded-2xl"
      src="https://www.google.com/maps?q=Lions%20Gym%20Kalanki%20Kathmandu&output=embed"
    />
  </section>

  {/* Footer */}
  <footer className="p-6 text-center border-t border-white/10">
    <p className="text-red-500 font-bold">LIONS GYM</p>
    <p>📞 9860802648</p>
    <a href="https://www.instagram.com/lions.gym51/?hl=en" className="text-gray-400">Instagram</a>
  </footer>

  {/* Floating Chatbot */}
  <div className="fixed bottom-5 right-5">
    <a href={whatsapp} className="bg-red-600 p-4 rounded-full shadow-lg">💬</a>
  </div>

</div>

); }
