#!/bin/bash

FILE="Vol_06_Ages_9-10_Scientist_Stage.md"

echo "=== VOLUME 6 CONTENT VERIFICATION ==="
echo ""
echo "File: $FILE"
echo "Size: $(wc -l < "$FILE") lines"
echo ""

echo "✓ CHAPTERS:"
grep -c "^# Chapter" "$FILE" | xargs echo "  - Chapter count:"

echo ""
echo "✓ EXPERIMENTS:"
grep -c "^### Week" "$FILE" | xargs echo "  - Week count:"

echo ""
echo "✓ RUBRICS:"
grep "^## Rubric [1-6]:" "$FILE" | wc -l | xargs echo "  - Major rubrics:"
grep "^### [0-9][A-Z]:" "$FILE" | wc -l | xargs echo "  - Sub-rubrics:"

echo ""
echo "✓ TABLES:"
grep -c "^|" "$FILE" | xargs echo "  - Table rows:"

echo ""
echo "✓ CHECKLISTS:"
grep -c "^- \[ \]" "$FILE" | xargs echo "  - Checkbox items:"

echo ""
echo "✓ KEY SECTIONS PRESENT:"
grep -q "Digital Integration" "$FILE" && echo "  ✅ Digital Integration chapter"
grep -q "Kitchen Scientist" "$FILE" && echo "  ✅ Kitchen Science experiments"
grep -q "Scientist Questions" "$FILE" && echo "  ✅ Scientist Questions"
grep -q "Khasi" "$FILE" && echo "  ✅ Khasi cultural connections"
grep -q "PlantNet" "$FILE" && echo "  ✅ App recommendations"
grep -q "Red Flags" "$FILE" && echo "  ✅ Red Flags section"
grep -q "Comprehensive Assessment Summary" "$FILE" && echo "  ✅ Assessment Summary"
grep -q "Tu Youyou" "$FILE" && echo "  ✅ Nobel failure stories"

echo ""
echo "✓ SAMPLE EXPERIMENTS:"
grep "^### Week 14:" "$FILE" > /dev/null && echo "  ✅ Week 14: Microclimate Mapping"
grep "^### Week 18:" "$FILE" > /dev/null && echo "  ✅ Week 18: Biodiversity Transect"
grep "^### Week 25:" "$FILE" > /dev/null && echo "  ✅ Week 25: Urban vs. Rural Comparison"
grep "^### Week 52:" "$FILE" > /dev/null && echo "  ✅ Week 52: Independent Research Presentation"

echo ""
echo "=== VERIFICATION COMPLETE ==="
