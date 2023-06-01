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
    public class S2v2ANDS3v2Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S2v2ANDS3v2Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S2v2ANDS3v2
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S2v2ANDS3v2>>> GetS2v2ANDS3v2()
        {
            return await _context.S2v2ANDS3v2.ToListAsync();
        }

        // GET: api/S2v2ANDS3v2/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S2v2ANDS3v2>> GetS2v2ANDS3v2(int id)
        {
            var s2v2ANDS3v2 = await _context.S2v2ANDS3v2.FindAsync(id);

            if (s2v2ANDS3v2 == null)
            {
                return NotFound();
            }

            return s2v2ANDS3v2;
        }

        // PUT: api/S2v2ANDS3v2/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS2v2ANDS3v2(int id, S2v2ANDS3v2 s2v2ANDS3v2)
        {
            if (id != s2v2ANDS3v2.id)
            {
                return BadRequest();
            }

            _context.Entry(s2v2ANDS3v2).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S2v2ANDS3v2Exists(id))
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

        // POST: api/S2v2ANDS3v2
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S2v2ANDS3v2>> PostS2v2ANDS3v2(S2v2ANDS3v2 s2v2ANDS3v2)
        {
            _context.S2v2ANDS3v2.Add(s2v2ANDS3v2);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetS2v2ANDS3v2", new { id = s2v2ANDS3v2.id }, s2v2ANDS3v2);
        }

        // DELETE: api/S2v2ANDS3v2/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S2v2ANDS3v2>> DeleteS2v2ANDS3v2(int id)
        {
            var s2v2ANDS3v2 = await _context.S2v2ANDS3v2.FindAsync(id);
            if (s2v2ANDS3v2 == null)
            {
                return NotFound();
            }

            _context.S2v2ANDS3v2.Remove(s2v2ANDS3v2);
            await _context.SaveChangesAsync();

            return s2v2ANDS3v2;
        }

        private bool S2v2ANDS3v2Exists(int id)
        {
            return _context.S2v2ANDS3v2.Any(e => e.id == id);
        }
    }
}
