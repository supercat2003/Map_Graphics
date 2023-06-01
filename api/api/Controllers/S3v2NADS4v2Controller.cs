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
    public class S3v2NADS4v2Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S3v2NADS4v2Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S3v2NADS4v2
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S3v2NADS4v2>>> GetS3v2NADS4v2()
        {
            return await _context.S3v2NADS4v2.ToListAsync();
        }

        // GET: api/S3v2NADS4v2/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S3v2NADS4v2>> GetS3v2NADS4v2(int id)
        {
            var s3v2NADS4v2 = await _context.S3v2NADS4v2.FindAsync(id);

            if (s3v2NADS4v2 == null)
            {
                return NotFound();
            }

            return s3v2NADS4v2;
        }

        // PUT: api/S3v2NADS4v2/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS3v2NADS4v2(int id, S3v2NADS4v2 s3v2NADS4v2)
        {
            if (id != s3v2NADS4v2.id)
            {
                return BadRequest();
            }

            _context.Entry(s3v2NADS4v2).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S3v2NADS4v2Exists(id))
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

        // POST: api/S3v2NADS4v2
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S3v2NADS4v2>> PostS3v2NADS4v2(S3v2NADS4v2 s3v2NADS4v2)
        {
            _context.S3v2NADS4v2.Add(s3v2NADS4v2);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetS3v2NADS4v2", new { id = s3v2NADS4v2.id }, s3v2NADS4v2);
        }

        // DELETE: api/S3v2NADS4v2/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S3v2NADS4v2>> DeleteS3v2NADS4v2(int id)
        {
            var s3v2NADS4v2 = await _context.S3v2NADS4v2.FindAsync(id);
            if (s3v2NADS4v2 == null)
            {
                return NotFound();
            }

            _context.S3v2NADS4v2.Remove(s3v2NADS4v2);
            await _context.SaveChangesAsync();

            return s3v2NADS4v2;
        }

        private bool S3v2NADS4v2Exists(int id)
        {
            return _context.S3v2NADS4v2.Any(e => e.id == id);
        }
    }
}
