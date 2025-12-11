import sanitizeHtml from 'sanitize-html'

export function sanitize(input){
    const sanitizedInput = {}
    for (const key in input){
        sanitizedInput[key] = sanitizeHtml(
            input[key],
            {
                allowedTags: ['b']
            }
        )
    }
    return sanitizedInput
}