using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using wardrobe.Models;

namespace wardrobe.Controllers
{
    public class WardrobesController : Controller
    {
        private WardrobeEntities db = new WardrobeEntities();

        // GET: Wardrobes
        public ActionResult Index()
        {
            var wardrobes = db.Wardrobes.Include(w => w.Accessory).Include(w => w.Bottom).Include(w => w.Sho).Include(w => w.Top);
            return View(wardrobes.ToList());
        }

        // GET: Wardrobes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Wardrobe wardrobe = db.Wardrobes.Find(id);
            if (wardrobe == null)
            {
                return HttpNotFound();
            }
            
            
            return View(wardrobe);
        }

        // GET: Wardrobes/Create
        public ActionResult Create()
        {
            ViewBag.AccessoriesID = new SelectList(db.Accessories1, "AccessoriesID", "NameofAccessories");
            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "BottomStyle");
            ViewBag.ShoesID = new SelectList(db.Shoes1, "ShoesID", "ShoeStyle");
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "TopStyle");
            return View();
        }

        // POST: Wardrobes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "WardrobeID,Name,Occasion,Season,TopsID,BottomsID,ShoesID,AccessoriesID")] Wardrobe wardrobe)
        {
            if (ModelState.IsValid)
            {
                db.Wardrobes.Add(wardrobe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AccessoriesID = new SelectList(db.Accessories1, "AccessoriesID", "NameofAccessories", wardrobe.AccessoriesID);
            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "BottomStyle", wardrobe.BottomsID);
            ViewBag.ShoesID = new SelectList(db.Shoes1, "ShoesID", "ShoeStyle", wardrobe.ShoesID);
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "TopStyle", wardrobe.TopsID);
            return View(wardrobe);
        }

        // GET: Wardrobes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Wardrobe wardrobe = db.Wardrobes.Find(id);
            if (wardrobe == null)
            {
                return HttpNotFound();
            }
            ViewBag.AccessoriesID = new SelectList(db.Accessories1, "AccessoriesID", "NameofAccessories", wardrobe.AccessoriesID);
            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "BottomStyle", wardrobe.BottomsID);
            ViewBag.ShoesID = new SelectList(db.Shoes1, "ShoesID", "ShoeStyle", wardrobe.ShoesID);
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "TopStyle", wardrobe.TopsID);
            return View(wardrobe);
        }

        // POST: Wardrobes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "WardrobeID,Name,Occasion,Season,TopsID,BottomsID,ShoesID,AccessoriesID")] Wardrobe wardrobe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(wardrobe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AccessoriesID = new SelectList(db.Accessories1, "AccessoriesID", "NameofAccessories", wardrobe.AccessoriesID);
            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "BottomStyle", wardrobe.BottomsID);
            ViewBag.ShoesID = new SelectList(db.Shoes1, "ShoesID", "ShoeStyle", wardrobe.ShoesID);
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "TopStyle", wardrobe.TopsID);
            return View(wardrobe);
        }

        // GET: Wardrobes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Wardrobe wardrobe = db.Wardrobes.Find(id);
            if (wardrobe == null)
            {
                return HttpNotFound();
            }
            return View(wardrobe);
        }

        // POST: Wardrobes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Wardrobe wardrobe = db.Wardrobes.Find(id);
            db.Wardrobes.Remove(wardrobe);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
