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
    public class U1s2v2Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public U1s2v2Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/U1s2v2
        [HttpGet]
        public async Task<ActionResult<IEnumerable<U1s2v2>>> GetU1s2v2()
        {
            return await _context.U1s2v2.ToListAsync();
        }

        // GET: api/U1s2v2/5
        [HttpGet("{id}")]
        public async Task<ActionResult<U1s2v2>> GetU1s2v2(int id)
        {
            var u1s2v2 = await _context.U1s2v2.FindAsync(id);

            if (u1s2v2 == null)
            {
                return NotFound();
            }

            return u1s2v2;
        }

        // PUT: api/U1s2v2/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutU1s2v2(int id, U1s2v2 u1s2v2)
        {
            if (id != u1s2v2.Id)
            {
                return BadRequest();
            }

            _context.Entry(u1s2v2).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!U1s2v2Exists(id))
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

        // POST: api/U1s2v2
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<U1s2v2>> PostU1s2v2(U1s2v2 u1s2v2)
        {
            _context.U1s2v2.Add(u1s2v2);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetU1s2v2", new { id = u1s2v2.Id }, u1s2v2);
        }

        // DELETE: api/U1s2v2/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<U1s2v2>> DeleteU1s2v2(int id)
        {
            var u1s2v2 = await _context.U1s2v2.FindAsync(id);
            if (u1s2v2 == null)
            {
                return NotFound();
            }

            _context.U1s2v2.Remove(u1s2v2);
            await _context.SaveChangesAsync();

            return u1s2v2;
        }

        private bool U1s2v2Exists(int id)
        {
            return _context.U1s2v2.Any(e => e.Id == id);
        }
    }
}
