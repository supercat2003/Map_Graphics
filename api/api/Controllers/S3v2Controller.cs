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
    public class S3v2Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S3v2Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S3v2
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S3v2>>> GetS3v2s()
        {
            return await _context.S3v2s.ToListAsync();
        }

        // GET: api/S3v2/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S3v2>> GetS3v2(int id)
        {
            var s3v2 = await _context.S3v2s.FindAsync(id);

            if (s3v2 == null)
            {
                return NotFound();
            }

            return s3v2;
        }

        // PUT: api/S3v2/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS3v2(int id, S3v2 s3v2)
        {
            if (id != s3v2.Id)
            {
                return BadRequest();
            }

            _context.Entry(s3v2).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S3v2Exists(id))
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

        // POST: api/S3v2
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S3v2>> PostS3v2(S3v2 s3v2)
        {
            _context.S3v2s.Add(s3v2);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (S3v2Exists(s3v2.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetS3v2", new { id = s3v2.Id }, s3v2);
        }

        // DELETE: api/S3v2/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S3v2>> DeleteS3v2(int id)
        {
            var s3v2 = await _context.S3v2s.FindAsync(id);
            if (s3v2 == null)
            {
                return NotFound();
            }

            _context.S3v2s.Remove(s3v2);
            await _context.SaveChangesAsync();

            return s3v2;
        }

        private bool S3v2Exists(int id)
        {
            return _context.S3v2s.Any(e => e.Id == id);
        }
    }
}
