using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Newco7;

namespace Newco7.Controllers
{
    public class AssociationsController : Controller
    {
        private NEWCO7COREContainer db = new NEWCO7COREContainer();

        // GET: Associations
        public async Task<ActionResult> Index()
        {
            return View(await db.Associations.ToListAsync());
        }

        // GET: Associations/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Associations associations = await db.Associations.FindAsync(id);
            if (associations == null)
            {
                return HttpNotFound();
            }
            return View(associations);
        }

        // GET: Associations/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Associations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "AssociationId")] Associations associations)
        {
            if (ModelState.IsValid)
            {
                db.Associations.Add(associations);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(associations);
        }

        // GET: Associations/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Associations associations = await db.Associations.FindAsync(id);
            if (associations == null)
            {
                return HttpNotFound();
            }
            return View(associations);
        }

        // POST: Associations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "AssociationId")] Associations associations)
        {
            if (ModelState.IsValid)
            {
                db.Entry(associations).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(associations);
        }

        // GET: Associations/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Associations associations = await db.Associations.FindAsync(id);
            if (associations == null)
            {
                return HttpNotFound();
            }
            return View(associations);
        }

        // POST: Associations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Associations associations = await db.Associations.FindAsync(id);
            db.Associations.Remove(associations);
            await db.SaveChangesAsync();
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
