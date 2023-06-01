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
    public class S4v2Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S4v2Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S4v2
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S4v2>>> GetS4v2()
        {
            return await _context.S4v2.ToListAsync();
        }

        // GET: api/S4v2/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S4v2>> GetS4v2(int id)
        {
            var s4v2 = await _context.S4v2.FindAsync(id);

            if (s4v2 == null)
            {
                return NotFound();
            }

            return s4v2;
        }

        // PUT: api/S4v2/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS4v2(int id, S4v2 s4v2)
        {
            if (id != s4v2.id)
            {
                return BadRequest();
            }

            _context.Entry(s4v2).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S4v2Exists(id))
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

        // POST: api/S4v2
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S4v2>> PostS4v2(S4v2 s4v2)
        {
            _context.S4v2.Add(s4v2);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetS4v2", new { id = s4v2.id }, s4v2);
        }

        // DELETE: api/S4v2/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S4v2>> DeleteS4v2(int id)
        {
            var s4v2 = await _context.S4v2.FindAsync(id);
            if (s4v2 == null)
            {
                return NotFound();
            }

            _context.S4v2.Remove(s4v2);
            await _context.SaveChangesAsync();

            return s4v2;
        }

        private bool S4v2Exists(int id)
        {
            return _context.S4v2.Any(e => e.id == id);
        }
    }
}
