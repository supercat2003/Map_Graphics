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
    public class S4v1Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S4v1Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S4v1
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S4v1>>> GetS4v1()
        {
            return await _context.S4v1.ToListAsync();
        }

        // GET: api/S4v1/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S4v1>> GetS4v1(int id)
        {
            var s4v1 = await _context.S4v1.FindAsync(id);

            if (s4v1 == null)
            {
                return NotFound();
            }

            return s4v1;
        }

        // PUT: api/S4v1/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS4v1(int id, S4v1 s4v1)
        {
            if (id != s4v1.id)
            {
                return BadRequest();
            }

            _context.Entry(s4v1).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S4v1Exists(id))
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

        // POST: api/S4v1
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S4v1>> PostS4v1(S4v1 s4v1)
        {
            _context.S4v1.Add(s4v1);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetS4v1", new { id = s4v1.id }, s4v1);
        }

        // DELETE: api/S4v1/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S4v1>> DeleteS4v1(int id)
        {
            var s4v1 = await _context.S4v1.FindAsync(id);
            if (s4v1 == null)
            {
                return NotFound();
            }

            _context.S4v1.Remove(s4v1);
            await _context.SaveChangesAsync();

            return s4v1;
        }

        private bool S4v1Exists(int id)
        {
            return _context.S4v1.Any(e => e.id == id);
        }
    }
}
