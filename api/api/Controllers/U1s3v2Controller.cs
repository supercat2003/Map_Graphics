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
    public class U1s3v2Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public U1s3v2Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/U1s3v2
        [HttpGet]
        public async Task<ActionResult<IEnumerable<U1s3v2>>> GetU1s3v2()
        {
            return await _context.U1s3v2.ToListAsync();
        }

        // GET: api/U1s3v2/5
        [HttpGet("{id}")]
        public async Task<ActionResult<U1s3v2>> GetU1s3v2(int id)
        {
            var u1s3v2 = await _context.U1s3v2.FindAsync(id);

            if (u1s3v2 == null)
            {
                return NotFound();
            }

            return u1s3v2;
        }

        // PUT: api/U1s3v2/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutU1s3v2(int id, U1s3v2 u1s3v2)
        {
            if (id != u1s3v2.Id)
            {
                return BadRequest();
            }

            _context.Entry(u1s3v2).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!U1s3v2Exists(id))
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

        // POST: api/U1s3v2
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<U1s3v2>> PostU1s3v2(U1s3v2 u1s3v2)
        {
            _context.U1s3v2.Add(u1s3v2);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetU1s3v2", new { id = u1s3v2.Id }, u1s3v2);
        }

        // DELETE: api/U1s3v2/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<U1s3v2>> DeleteU1s3v2(int id)
        {
            var u1s3v2 = await _context.U1s3v2.FindAsync(id);
            if (u1s3v2 == null)
            {
                return NotFound();
            }

            _context.U1s3v2.Remove(u1s3v2);
            await _context.SaveChangesAsync();

            return u1s3v2;
        }

        private bool U1s3v2Exists(int id)
        {
            return _context.U1s3v2.Any(e => e.Id == id);
        }
    }
}
