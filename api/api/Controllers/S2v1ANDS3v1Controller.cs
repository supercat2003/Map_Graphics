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
    public class S2v1ANDS3v1Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S2v1ANDS3v1Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S2v1ANDS3v1
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S2v1ANDS3v1>>> GetS2v1ANDS3v1()
        {
            return await _context.S2v1ANDS3v1.ToListAsync();
        }

        // GET: api/S2v1ANDS3v1/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S2v1ANDS3v1>> GetS2v1ANDS3v1(int id)
        {
            var s2v1ANDS3v1 = await _context.S2v1ANDS3v1.FindAsync(id);

            if (s2v1ANDS3v1 == null)
            {
                return NotFound();
            }

            return s2v1ANDS3v1;
        }

        // PUT: api/S2v1ANDS3v1/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS2v1ANDS3v1(int id, S2v1ANDS3v1 s2v1ANDS3v1)
        {
            if (id != s2v1ANDS3v1.id)
            {
                return BadRequest();
            }

            _context.Entry(s2v1ANDS3v1).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S2v1ANDS3v1Exists(id))
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

        // POST: api/S2v1ANDS3v1
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S2v1ANDS3v1>> PostS2v1ANDS3v1(S2v1ANDS3v1 s2v1ANDS3v1)
        {
            _context.S2v1ANDS3v1.Add(s2v1ANDS3v1);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetS2v1ANDS3v1", new { id = s2v1ANDS3v1.id }, s2v1ANDS3v1);
        }

        // DELETE: api/S2v1ANDS3v1/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S2v1ANDS3v1>> DeleteS2v1ANDS3v1(int id)
        {
            var s2v1ANDS3v1 = await _context.S2v1ANDS3v1.FindAsync(id);
            if (s2v1ANDS3v1 == null)
            {
                return NotFound();
            }

            _context.S2v1ANDS3v1.Remove(s2v1ANDS3v1);
            await _context.SaveChangesAsync();

            return s2v1ANDS3v1;
        }

        private bool S2v1ANDS3v1Exists(int id)
        {
            return _context.S2v1ANDS3v1.Any(e => e.id == id);
        }
    }
}
