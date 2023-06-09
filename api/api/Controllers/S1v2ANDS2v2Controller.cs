﻿using System;
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
    public class S1v2ANDS2v2Controller : ControllerBase
    {
        private readonly kometaDBContext _context;

        public S1v2ANDS2v2Controller(kometaDBContext context)
        {
            _context = context;
        }

        // GET: api/S1v2ANDS2v2
        [HttpGet]
        public async Task<ActionResult<IEnumerable<S1v2ANDS2v2>>> GetS1v2ANDS2v2()
        {
            return await _context.S1v2ANDS2v2.ToListAsync();
        }

        // GET: api/S1v2ANDS2v2/5
        [HttpGet("{id}")]
        public async Task<ActionResult<S1v2ANDS2v2>> GetS1v2ANDS2v2(int id)
        {
            var s1v2ANDS2v2 = await _context.S1v2ANDS2v2.FindAsync(id);

            if (s1v2ANDS2v2 == null)
            {
                return NotFound();
            }

            return s1v2ANDS2v2;
        }

        // PUT: api/S1v2ANDS2v2/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutS1v2ANDS2v2(int id, S1v2ANDS2v2 s1v2ANDS2v2)
        {
            if (id != s1v2ANDS2v2.id)
            {
                return BadRequest();
            }

            _context.Entry(s1v2ANDS2v2).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!S1v2ANDS2v2Exists(id))
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

        // POST: api/S1v2ANDS2v2
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<S1v2ANDS2v2>> PostS1v2ANDS2v2(S1v2ANDS2v2 s1v2ANDS2v2)
        {
            _context.S1v2ANDS2v2.Add(s1v2ANDS2v2);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetS1v2ANDS2v2", new { id = s1v2ANDS2v2.id }, s1v2ANDS2v2);
        }

        // DELETE: api/S1v2ANDS2v2/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<S1v2ANDS2v2>> DeleteS1v2ANDS2v2(int id)
        {
            var s1v2ANDS2v2 = await _context.S1v2ANDS2v2.FindAsync(id);
            if (s1v2ANDS2v2 == null)
            {
                return NotFound();
            }

            _context.S1v2ANDS2v2.Remove(s1v2ANDS2v2);
            await _context.SaveChangesAsync();

            return s1v2ANDS2v2;
        }

        private bool S1v2ANDS2v2Exists(int id)
        {
            return _context.S1v2ANDS2v2.Any(e => e.id == id);
        }
    }
}
