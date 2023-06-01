using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using api.Models;

namespace api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class U1s2v1Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public U1s2v1Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/U1s2v1
        [HttpGet]
        public async Task<ActionResult<IEnumerable<U1s2v1>>> GetU1s2v1()
        {
            return await _context.U1s2v1.ToListAsync();
        }

        // GET: api/U1s2v1/5
        [HttpGet("{id}")]
        public async Task<ActionResult<U1s2v1>> GetU1s2v1(int id)
        {
            var u1s2v1 = await _context.U1s2v1.FindAsync(id);

            if (u1s2v1 == null)
            {
                return NotFound();
            }

            return u1s2v1;
        }

        // PUT: api/U1s2v1/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutU1s2v1(int id, U1s2v1 u1s2v1)
        {
            if (id != u1s2v1.Id)
            {
                return BadRequest();
            }

            _context.Entry(u1s2v1).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!U1s2v1Exists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/U1s2v1
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<U1s2v1>> PostU1s2v1(U1s2v1 u1s2v1)
        {
            _context.U1s2v1.Add(u1s2v1);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetU1s2v1", new { id = u1s2v1.Id }, u1s2v1);
        }

        // DELETE: api/U1s2v1/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<U1s2v1>> DeleteU1s2v1(int id)
        {
            var u1s2v1 = await _context.U1s2v1.FindAsync(id);
            if (u1s2v1 == null)
            {
                return NotFound();
            }

            _context.U1s2v1.Remove(u1s2v1);
            await _context.SaveChangesAsync();

            return u1s2v1;
        }

        private bool U1s2v1Exists(int id)
        {
            return _context.U1s2v1.Any(e => e.Id == id);
        }
    }
}
