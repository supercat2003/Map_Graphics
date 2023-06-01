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
    public class U1s1v22Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public U1s1v22Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/U1s1v22
        [HttpGet]
        public async Task<ActionResult<IEnumerable<U1s1v22>>> GetU1s1v22()
        {
            return await _context.U1s1v22.ToListAsync();
        }

        // GET: api/U1s1v22/5
        [HttpGet("{id}")]
        public async Task<ActionResult<U1s1v22>> GetU1s1v22(int id)
        {
            var u1s1v22 = await _context.U1s1v22.FindAsync(id);

            if (u1s1v22 == null)
            {
                return NotFound();
            }

            return u1s1v22;
        }

        // PUT: api/U1s1v22/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutU1s1v22(int id, U1s1v22 u1s1v22)
        {
            if (id != u1s1v22.Id)
            {
                return BadRequest();
            }

            _context.Entry(u1s1v22).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!U1s1v22Exists(id))
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

        // POST: api/U1s1v22
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<U1s1v22>> PostU1s1v22(U1s1v22 u1s1v22)
        {
            _context.U1s1v22.Add(u1s1v22);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetU1s1v22", new { id = u1s1v22.Id }, u1s1v22);
        }

        // DELETE: api/U1s1v22/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<U1s1v22>> DeleteU1s1v22(int id)
        {
            var u1s1v22 = await _context.U1s1v22.FindAsync(id);
            if (u1s1v22 == null)
            {
                return NotFound();
            }

            _context.U1s1v22.Remove(u1s1v22);
            await _context.SaveChangesAsync();

            return u1s1v22;
        }

        private bool U1s1v22Exists(int id)
        {
            return _context.U1s1v22.Any(e => e.Id == id);
        }
    }
}
