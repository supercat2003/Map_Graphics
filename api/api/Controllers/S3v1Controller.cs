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
    public class S3v1Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S3v1Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S3v1
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S3v1>>> GetS3v1s()
        {
            return await _context.S3v1s.ToListAsync();
        }

        // GET: api/S3v1/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S3v1>> GetS3v1(int id)
        {
            var s3v1 = await _context.S3v1s.FindAsync(id);

            if (s3v1 == null)
            {
                return NotFound();
            }

            return s3v1;
        }

        // PUT: api/S3v1/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS3v1(int id, S3v1 s3v1)
        {
            if (id != s3v1.Id)
            {
                return BadRequest();
            }

            _context.Entry(s3v1).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S3v1Exists(id))
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

        // POST: api/S3v1
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S3v1>> PostS3v1(S3v1 s3v1)
        {
            _context.S3v1s.Add(s3v1);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (S3v1Exists(s3v1.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetS3v1", new { id = s3v1.Id }, s3v1);
        }

        // DELETE: api/S3v1/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S3v1>> DeleteS3v1(int id)
        {
            var s3v1 = await _context.S3v1s.FindAsync(id);
            if (s3v1 == null)
            {
                return NotFound();
            }

            _context.S3v1s.Remove(s3v1);
            await _context.SaveChangesAsync();

            return s3v1;
        }

        private bool S3v1Exists(int id)
        {
            return _context.S3v1s.Any(e => e.Id == id);
        }
    }
}
